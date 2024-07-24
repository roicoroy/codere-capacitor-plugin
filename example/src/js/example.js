import { CodereCapacitorPlugin } from 'codere-capacitor-plugin';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    CodereCapacitorPlugin.echo({ value: inputValue })
}
