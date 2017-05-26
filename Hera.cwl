baseCommand: [/opt/tools/Hera/Hera, quant, -i, /opt/tools/Hera/index]
class: CommandLineTool
cwlVersion: v1.0
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/linuxpham-7363252-synapse:1.0.0'}
inputs:
- id: fastq_1
  inputBinding: {position: 4}
  type: File
- id: fastq_2
  inputBinding: {position: 5}
  type: File
- id: outpath
  inputBinding: {position: 2, prefix: -o}
  type: string
- id: thread_num
  inputBinding: {position: 3, prefix: -t}
  type: int
outputs:
- id: out_file
  outputBinding: {glob: abundance.tsv}
  type: File
requirements:
- {class: InlineJavascriptRequirement}
