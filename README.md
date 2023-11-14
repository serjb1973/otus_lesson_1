## Домашнее задание: Обновить ядро в базовой системе
### Цель:
#### Получить навыки работы с Git, Vagrant, Packer;
#### Публиковать готовые образы в Vagrant Cloud.

### Для выполнения работы используются следующие инструменты:
- VirtualBox - среда виртуализации, позволяет создавать и выполнять виртуальные машины;
- Vagrant - ПО для создания и конфигурирования виртуальной среды. В данном случае в качестве среды виртуализации используется VirtualBox;
- Packer - ПО для создания образов виртуальных машин;
- Git - система контроля версий

### Аккаунты:
- GitHub - https://github.com/
- Vagrant Cloud - https://app.vagrantup.com

### Создание образа
packer build centos.json

### Размещение образа в облаке vagrantup
```
vagrant cloud publish --release serjb73/centos-7 2.0 virtualbox centos-7.7-kernel-5-x86_64-Minimal.box
```
меняем видимость имиджа на public в облаке vagrantup

### Проверка
Файл packer\Vagrant в проекте (или сделать новый командой ``vagrant init serjb73/centos-7``)
```
vagrant up
vagrant ssh
```
