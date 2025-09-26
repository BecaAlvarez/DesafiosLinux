#!/bin/bash
# Total CPU usage
function cpu-usage() {
    echo "------Uso total da CPU------"
    top -bn1 | grep "%Cpu(s):"
    echo""
}

# Total memory usage (Free vs Used including percentage)
function memory-usage() {
    echo "------Uso total da memoria------"
    free -m
    echo""
}

# Total disk usage (Free vs Used including percentage)
function disk-usage() {
    echo "------Uso total do disco------"
    df -h
    echo""
}

#Top 5 processes by CPU usage
function top-cpu-processes() {
    echo "------5 principais processos por uso da CPU------"
    ps -eo pid,comm,cmd,%cpu --sort=-%cpu | head -n 6
    echo""
}

#Top 5 processes by memory usage
function top-memory-processes() {
    echo "------5 principais processos por uso da memória------"
    ps -eo pid,comm,cmd,%mem --sort=-%mem | head -n 6
    echo""
}

#Stretch goal
function version() {
    echo "------Versao kernel do Linux------"
    uname -a
    echo""
}

function show-uptime() {
    echo "------Tempo de Atividade------"
    uptime -p
    echo""
}

function load-average() {
    echo "------Carga Media------"
    uptime | awk -F'load average:' '{print $2}' | awk '{print $1}'
    echo""
}

function users-logged() {
    echo "------Usuarios Logados------"
    who
    echo "Total: $(who | wc -l)"
    echo""
}

function failed-login-attempts() {
    echo "------Tentativas de Login com Falha------"
    grep "failed password" /var/log/auth.log | wc -l
    echo""
}

#MAIN
echo "Estatisticas de Desempenho"
echo""

cpu-usage
memory-usage
disk-usage
top-cpu-processes
top-memory-processes
version
show-uptime
load-average
users-logged
failed-login-attempts

echo""



