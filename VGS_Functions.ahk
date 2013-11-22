getIndex(val){
	global Inputs
	Loop, parse, Inputs, `,
	{
		cField = %A_LoopField%
		if(val = cField){
			rNdx = %A_Index%
			return (rNdx)
		}
	}
}

getValue(ndx){
	global Outputs
	Loop, parse, Outputs, `,
	{
		cIndex = %A_Index%
		if(ndx = cIndex){
			rVal = %A_LoopField%
			return (rVal)
		}
	}
}

rCommand(vText){
	wIndex := getIndex(vText)
	wVal := getValue(wIndex)
	return (wVal)
}
