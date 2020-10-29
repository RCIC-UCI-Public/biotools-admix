# biotools-admix
A collection of bio related tools built into RPMS using yaml2rpm

## Individual packages info

1. GATK version 4+ :

   - For generic help run command **gatk --help**
   - List available tools **gatk --list**
   - For specific TOOL help run command **gatk TOOL --help**
   - Software home url https://gatk.broadinstitute.org/hc/en-us
   - Getting started guide: https://gatk.broadinstitute.org/hc/en-us/articles/360036194592-Getting-started-with-GATK4

1. Freebayes

   Github source doesn't have all required modules and can't 
   be used for compilation. Create a tar.gz from a known tag
   and pull the source from google drive:

   ```bash
   git clone --recursive  -b v1.3.2 git://github.com/ekg/freebayes.git
   tar czvf ../sources/freebayes-1.3.2.tar.gz freebayes
   ```
   To test need to load modules:

   ```bash
   module load samtools parallel 
   make test
   ```

1. ncbi-blast

  Includes RMBlast program rmblastn for use with RepeatMasker and RepeatModeler.
  See ihttp://www.repeatmasker.org/RMBlast.html for additionl info on config options.

  The following requires_exclude shortcurts did not work in rpmFilters:

  ```bash
  #%global __requires_exclude_from %{_libdir}/.*\\.so$|%{_bindir}
  #%global __requires_exclude_from ^%{buildroot}%{_libdir}/.*.so$
  ```
  As a workaround list all libraries in yaml file.

1. picard-tools

   When need to build picard-tools version 2+ use vendor_source https://github.com/broadinstitute/picard

1. pilon

   To use with different memory requirements may need to do: 

   ```bash
   java -Xmx16G -jar /path/to/pilon.jar
   ```

   Above specifies the maximum size, 16G of the memory allocation pool.
   This value must be x 1024 greater than 2MB. Append the letter K for Kbs, M for Mbs, G for Gbs.
   The default value is 64MB. 

