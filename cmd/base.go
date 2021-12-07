package cmd

import (
	"github.com/spf13/cobra"
	"github.com/spf13/viper"
)

var baseCmd = &cobra.Command{
	Use:   "cobra-go",
	Short: "Description of Apps",
	Aliases: []string{
		"cgo", "cg",
	},
}

func init() {
	baseCmd.PersistentFlags().StringP("dir", "d", "/temp", "path used")
	viper.BindPFlag("dir", baseCmd.PersistentFlags().Lookup("dir"))
}

func Exec() {
	cobra.CheckErr(baseCmd)
}
