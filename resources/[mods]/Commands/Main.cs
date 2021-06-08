using System;
using System.Threading.Tasks;
using PoliceFunctions_API.Functions;
using CitizenFX.Core;
using CitizenFX.Core.Native;
using CitizenFX.Core.UI;

namespace PROJECTNAME
{
    public class Main : BaseScript
    {
        public static string Author = "AUTHOR NAME";
        public static string ModName = "MOD NAME";
        public static string Version = "CURRENT VERSION";
        
        public Main()
        {
            Tick += OnTick;
            API.RegisterCommand("rep", new Action(Repair), false);
            API.RegisterCommand("wash", new Action(Wash), false);
            // API.RegisterCommand("help", new Action(Help), false);
            API.RegisterCommand("heal", new Action(Healing), false);
            
            
        } // <<<< THIS IS YOUR CLOSING MAIN BRACKET
        
        private static void Repair(){
            Game.Player.Character.CurrentVehicle.Repair();
        }
         private static void Wash(){
            Game.Player.Character.CurrentVehicle.Wash();
        }
        
       // private static void Help(){
         
           //      TriggerEvent("chat:addMessage",new{
           //           color = new[] {255, 0, 0},
           //        multiline = true,
           //        args = new[] {"Helper", "Доступные команды: \n /wash - помыть транспорт \n /rep - починить траспорт \n Speedometer: \n /speedoskins - список скинов \n /speedoskin [skinName] - выбор конкретного скина \n /spedotoggle - вкл/выкл \n Vehicle:\n /trunk - открыть багажник\n /hood - открыть капот \n /rdoors - открыть задние двери \n /engine[on|off] - вклю/выкл двигатель\n RP:\n /me - действие от лица персонажа(первая буква строчная)\n /do - действие(состояние) от третьего лица(первая буква прописная)"}
       //   });
       //     
   //  }
        
        private static void Healing()
        {
           void SetPedMaxHealth(PlayerPedId(), 500); //SET TO EITHER TRUE OR FALSE
            //COMMAND CODE GOES HERE
        }
        
        //if(TriggerEvent("chat:addMessage")){
         //new{
             //  color = new[] {255, 255, 0},
             //    multiline = true,
                //      args = new[] {"Hey", "Сообщение"}
            // }
       // }

        private static async Task OnTick()
        {
            
        }
    }
}