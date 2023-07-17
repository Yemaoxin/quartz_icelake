#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x2c4010cf, "module_layout" },
	{ 0x6bc3fbc0, "__unregister_chrdev" },
	{ 0xd17e33d0, "__register_chrdev" },
	{ 0x6da47280, "pci_bus_write_config_word" },
	{ 0xb44ad4b3, "_copy_to_user" },
	{ 0x7c32d0f0, "printk" },
	{ 0xd75c79df, "smp_call_function" },
	{ 0x8acbd957, "pci_bus_read_config_word" },
	{ 0xdb7305a1, "__stack_chk_fail" },
	{ 0xadf42b51, "pci_find_next_bus" },
	{ 0xbdfb6dbb, "__fentry__" },
	{ 0x362ef408, "_copy_from_user" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "E7A2BD2361E7E5F8CEA1CDC");
