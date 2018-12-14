while :
do
	echo "Cleaning..."

	#If the maximum checkpoint exists (i.e., you should write here the checkpoints for when the method stopped), then we do nothing...
	if [[ -n $(find /home/campero/Desktop/current/gridformation-dopamine-tf/gridformation-dopamine/data/6.12.KoheletLatest/checkpoints/*tf_ckpt-99980*) ]]
	then
    		echo "File number exists. Exiting."
		break
	else
	    echo "File number does not exist. Deleting old stuff and then sleeping..." 	#We delete the files older than 30 minutes
	    find /home/campero/Desktop/current/gridformation-dopamine-tf/gridformation-dopamine/data/6.12.KoheletLatest/checkpoints/ -mmin +30 -type f -delete
	    sudo rm -rf ~/.local/share/Trash/* #We delete the trash
	    sleep 30m #We sleep for 30 minutes.
	fi

done

