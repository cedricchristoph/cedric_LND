xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, no-inherit;


<repetidores>
{
	for $alumno in //alumno
	where $alumno/repetidor = "true"
	order by $alumno/apellidos
	return $alumno/apellidos
}
</repetidores>

