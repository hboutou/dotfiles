function confirm
	while true
		read -P "confirm yes/no " choice
		switch $choice
			case yes; return 0
			case no; return 1
		end
	end
end
