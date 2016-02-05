class ejemplo1:GLib.Object
{
private string nombre;
private int intentos;

	public ejemplo1(string nombre, int intentos)
	{
		this.nombre=nombre;
		this.intentos=intentos;
	}
	public static int main(string [] args)
	{
		ejemplo1[] nombres={};

		stdout.printf("valor min:");
		int min=int.parse(stdin.read_line());
		stdout.printf("valor max:");
		int max=int.parse(stdin.read_line());
		random(min,max,nombres);
	return 0;
	}
	public static void random(int min, int max,ejemplo1[] nombres)
	{
		string nombre="";
		stdout.printf("Nombre:");
		nombre=stdin.read_line();
		int num=Random.int_range (min,max);
		juego(num,nombre,nombres);
	}
	public static void juego(int num,string nombre,ejemplo1[] nombres)
	{
	string respuesta="s";
	int n=0;
	int intentos=1;
		while(respuesta=="s")
		{
			stdout.printf("dime un número:");
			n=int.parse(stdin.read_line());
			if(n==num)
			{
				guardar(intentos,nombre,nombres);		
			}else
			{
				stdout.printf("Quieres volver a intentarlo? :");
				respuesta=stdin.read_line();
				intentos++;
			}
		}
	}
	public static void guardar(int intentos,string nombre,ejemplo1[] nombres)
	{
		ejemplo1 nuevo = new ejemplo1(nombre,intentos);
		nombres += nuevo;
	}

}
