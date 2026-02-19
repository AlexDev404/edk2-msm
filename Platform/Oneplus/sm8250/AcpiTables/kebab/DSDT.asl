//
// OnePlus 8T (kebab) DSDT - Based on instantnoodlp template
// Modified for SM8250 kebab device
//
DefinitionBlock("DSDT.AML", "DSDT", 0x02, "QCOMM ", "SM8250 ", 3)
{
    Scope(\_SB_) {
        Include("dsdt_common.asl")
        Include("Pep_lpi.asl")
        Include("ufs.asl")
        // Device-specific customizations for kebab can be added here
    }
}
