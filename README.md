# Desafios Linux

Repositório dedicado a estudos e práticas em **Bash para Linux**, contendo desafios, exercícios e scripts desenvolvidos para aprimorar habilidades em automação e administração de sistemas.  

![Linux](https://img.shields.io/badge/Linux-Shell-blue?logo=linux&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-Scripting-green?logo=gnu-bash&logoColor=white)

---

## 🎯 Desafios

<details>
  <summary>1. Server Performance Stats</summary>

O objetivo deste projeto é desenvolver um script chamado `server-performance-stats.sh` para analisar estatísticas básicas de desempenho de servidores Linux.
### 📂 Requisitos
#### Principais:
- **Uso total da CPU**  
- **Uso total da memória** (livre vs utilizada, incluindo percentual)  
- **Uso total do disco** (livre vs utilizado, incluindo percentual)  
- **Top 5 processos por uso de CPU**  
- **Top 5 processos por uso de memória**  

#### Opcionais (stretch goals):
Além dos pontos principais, o script pode incluir outras informações úteis, como:  
- Versão do sistema operacional  
- Tempo de atividade (**uptime**)  
- Carga média do sistema (**load average**)  
- Usuários logados  
- Tentativas de login falhas  

### 🔧 Como executar

- Clone este repositório:
  ```bash
  git clone https://github.com/seu-usuario/DesafiosLinux.git
- Acesse o diretório:
  ```bash
  cd DesafiosLinux
- Dê permissão de execução ao script desejado:
  ```bash
  chmod +x server-performance-stats.sh
- Execute o script:
  ```bash
  ./server-performance-stats.sh

</details>

