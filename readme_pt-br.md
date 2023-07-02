# SDMMR 1024K

## History

A **SDMMR 1024K** [1] foi desenvolvida por **Phillipe H. (MG2)** com a participação de **Fabf** e **6502man**. Ela é baseada na **SDMapper** (versão 1) [2] de **Luciano Sturaro** e **Fábio Belavenuto**, sem que eles tenham participado do desenvolvimento desta. As seguintes alterações foram feitas:

1. Troca do CPLD para o Altera EPM240;
2. Aumento na memória de 512K para 1024K;
3. Possibilidade do uso em conjunto de _Mapper_ e _MegaRAM_;
4. Adaptação do driver 1.0.4 da **SDMapper** (sem alteração da versão).
 
* Links

  [1] [SDMMR 1024K](http://mymsx2.free.fr/montages/Cartouche_SD_MMR_1024K/cartouche_sdmmr_1024k.html)

  [2] [SDMapper](https://github.com/fbelavenuto/msxsdmapper/)


## Estrutura do repositório

- Firmware - Versões das atualizações
- Nextor - Arquivos do Kernel base
- Tools - Utilitários do kernel e de atualização do firmware

## How-to

<br><span style="color:red">**ATENÇÃO: Não tente atualizar o firmware à partir da própria SDMMR**.</span><br><br>

A atualização precisa ser feita à partir de outra mídia como, por exemplo, um disquete.

Copie o arquivo da versão do firmware desejado (disponível no diretório **firmware**) e o utilitário de atualização (_UPDSDMMR.COM_ disponível no diretório **tools**). Caso esteja usando um disquete copie também seus próprios arquivos de boot do MSX-DOS 1 (_MSX-DOS.SYS_ e _COMMAND.COM_).

Faça o boot do MSX desabilitando o kernel [1] da **SDMMR 1024K**, se o seu cartucho está no _slot 1_ basta manter a tecla "**Q**" pressionada. Após o boot pela mídia escolhida execute, por exemplo:

`UPDSDMMR SDMMR105.ROM`

Após a atualização do firmware é aconselhável seguir os passos abaixo caso já tenha um SD 'bootável' com uma versão anterior do Nextor:

1. Copie de **tools** o arquivo _NEXTOR.SYS_ disponível no respectivo diretório da versão do firmware utilizado;
2. Caso exista, no mesmo diretório, o pacote _TOOLS.ZIP_ que contém os utilitários que foram atualizados ou criados para o novo kernel do Nextor. Extraia-os para o SD sobrescrevendo os seus arquivos anteriores.

* Links

  [1] [MSX - Boot keys](https://www.msx.org/wiki/Boot_keys)

## Versões

* 1.0.4

1. Versão original com o kernel 2.0 alpha do Nextor.

* 1.0.5

1. Primeira interação. Códigos base (device.bin e custom_code.bin) 'ripados' do driver 1.0.4;
2. Correção dos créditos, nomes e versão do driver;
3. Atualização do kernel Nextor para a versão 2.1.1.

## ToDo

* Verificar o ponteiro para a página 0 do Nextor no código do MG2.
  - https://github.com/Konamiman/Nextor/releases/tag/2.1.0-beta2
  - https://github.com/uniabis/msxsdmapper/commit/2fd551f14bd8a22a6784f32f843cbe95f4d17ae1
<br/><br/>
* Verificar a configuração de devices hot-plug
  - O uso do utilitário LOCK.COM do Nextor causa instabilidade de operação da máquina.