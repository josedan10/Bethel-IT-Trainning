VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   5160
   ClientTop       =   2970
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   Begin VB.CommandButton Btn 
      Caption         =   "Probar"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   14.25
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1080
      TabIndex        =   2
      Top             =   1920
      Width           =   2295
   End
   Begin VB.TextBox txtNumero 
      Height          =   495
      Left            =   2760
      TabIndex        =   1
      Top             =   360
      Width           =   735
   End
   Begin VB.Label lblResultado 
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   12
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1080
      TabIndex        =   3
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Introduzca un número para determinar si es par o impar: "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Btn_Click()

    Dim numero As Integer
    
    numero = Val(txtNumero.Text)
    
    Select Case numero
    
        Case 0
            lblResultado.Caption = "El cero no es par ni impar"
            
        Case Else
    
            If numero Mod 2 = 0 Then
            
                lblResultado.Caption = "El numero es par"
                
            Else
                
                lblResultado.Caption = "El numero es impar"
            
            End If
            
    End Select
    
End Sub


Private Sub txtNumero_KeyPress(KeyAscii As Integer)

    Select Case KeyAscii
    
        Case 127
            KeyAscii = 127
            
        Case 8
            KeyAscii = 8
    
        Case Else
        
            If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
            
                KeyAscii = 0
            
            End If
    End Select

End Sub

