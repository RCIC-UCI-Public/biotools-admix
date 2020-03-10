# biotools-admix
A collection of bio related tools built into RPMS using yaml2rpm

## Individual packages info

1. GATK version 4+ :

   - For generic help run command **gatk --help**
   - List available tools **gatk --list**
   - For specific TOOL help run command **gatk TOOL --help**
   - Software home url https://gatk.broadinstitute.org/hc/en-us
   - Getting started guide: https://gatk.broadinstitute.org/hc/en-us/articles/360036194592-Getting-started-with-GATK4

2. Freebayes

   Github source doesn't have all required modules and can't 
   be used for compilation. Create a tar.gz from a known tag
   and pull the source from google drive:

   ```bash
   git clone --recursive  -b v1.3.2 git://github.com/ekg/freebayes.git
   tar czvf ../sources/freebayes-1.3.2.tar.gz freebayes
   ```
