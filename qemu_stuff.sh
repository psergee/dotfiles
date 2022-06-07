#/bin/bash

qemu-img create -f raw win10.img 50G
qemu-system-x86_64 -drive format=raw,file=win10.img -m 8G -smp cores=2 -enable-kvm -vga qxl -cdrom ./win10.iso -cpu host -spice port=5900,addr=127.0.0.1,disable-ticketing

# SPICE connect:
spicy -h 127.0.0.1 -p 5900

# Enable remote desktop connection on Windows machine before using rdekstop.
qemu-system-x86_64 win10.img -m 8G -enable-kvm -smp 2 -nographic -net nic -net user,hostfwd=tcp::3389-:3389
rdesktop -E -a 32 -x l -f -u admin -p <password> localhost

# For Linux (vnc)
qemu-system-x86_64 fedora.img -m 8G -smp 2 -enable-kvm -vnc :1

# Bridge
```
sudo virsh net-start --network default
cat /etc/qemu/bridge.conf 
allow virbr0
sudo chmod 4755 /usr/lib/qemu/qemu-bridge-helper
sudo adduser <user> libvirt
qemu-system-x86_64 -drive format=raw,file=linux.img -m 6G -smp cores=2 -enable-kvm -vga qxl -cpu host -netdev bridge,id=hn0,br=virbr0 -device virtio-net-pci,netdev=hn0,id=nic1
```
