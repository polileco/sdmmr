SDMMR 1024K

 * History
 
 O hardware da SDMMR é baseado na PCB ´SDMapper´ (versão 1) de Luciano Sturaro e driver desenvolvido por Fábio Belavenuto, sem que esses tenham participado do desenvolvimento nem do hardware ou do software.
 A PCB da ´SDMMR´ foi desenvolvida por Phillipe H. (MG2) com a participação de Fabf e 6502man no desenvolvimento do software. As seguintes alterações foram feitas:
  - Troca do CPLD para o Altera EPM240
  - Aumento na memória de 512K para 1024K
  - Possibilidade do uso em conjunto de Mapper e MegaRAM
  - Ajuste do driver 1.0.4 da SDMapper (sem alteração da versão)
 
 * Links
 
 https://github.com/fbelavenuto/msxsdmapper/
 http://mymsx2.free.fr/montages/Cartouche_SD_MMR_1024K/cartouche_sdmmr_1024k.html
 
 * How-to

 Caso tenha atualizado o driver é aconselhável seguir os passos abaixo.
 
  1. Caso já tenha o SD preparado e 'bootável' copie o arquivo NEXTOR.SYS anexo neste pacote para a sua partição de boot.
  2. Caso exista, no pacote TOOLS.ZIP encontram-se os utilitários que foram atualizados para o kernel do Nextor. Extraia-os para a raiz ou o diretório do SD sobrescrevendo os antigos executáveis.

* Updates

- Driver 1.0.5

 Primeira interação. Códigos base (device.bin e custom_code.bin) 'ripados' do driver 1.0.4
 Correção dos créditos, nomes e versão do driver
 Atualização do kernel Nextor para a versão 2.1.1
 
- ToDo

 Verificar o ponteiro para a página 0 do Nextor no código do MG2.
  - BREAKING CHANGE (https://github.com/Konamiman/Nextor/releases/tag/2.1.0-beta2)
  - https://github.com/uniabis/msxsdmapper/commit/2fd551f14bd8a22a6784f32f843cbe95f4d17ae1
  
 Verificar a configuração de devices hot-plug
  - O uso do utilitário LOCK.COM do Nextor causa instabilidade de operação da máquina.
