VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3285
   ClientLeft      =   4545
   ClientTop       =   2310
   ClientWidth     =   5505
   LinkTopic       =   "Form1"
   ScaleHeight     =   3285
   ScaleWidth      =   5505
   Begin VB.CommandButton BtnSalir 
      Caption         =   "Salir"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   12
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3120
      TabIndex        =   3
      Top             =   2280
      Width           =   1575
   End
   Begin VB.CommandButton BtnImporte 
      Caption         =   "Ver Importe"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   12
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   840
      TabIndex        =   2
      Top             =   2280
      Width           =   1695
   End
   Begin VB.TextBox txtImporte 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      TabIndex        =   1
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label lblImporte 
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   720
      TabIndex        =   4
      Top             =   1320
      Width           =   4095
   End
   Begin VB.Label Label1 
      Caption         =   "Introduzca el importe bruto:"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BtnImporte_Click()

    Dim importeBruto As Double
    Dim importeNeto As Double
    
    importeBruto = Val(txtImporte.Text)
    
    If importeBruto < 2000 Then
    
        importeNeto = importeBruto
        
    Else
    
        importeNeto = importeBruto - importeBruto * 0.15
    
    End If

    lblImporte.Caption = "Su importe Neto es: " & importeNeto
    
End Sub

Private Sub BtnSalir_Click()

    End

End Sub

Private Sub txtImporte_KeyPress(KeyAscii As Integer)

    'Codigos ASCII
    'BACKSPACE = 8
    '. = 46
    'DEL = 127
    'Numeros del 0 al 9 = 48 - 57

    Select Case KeyAscii
    
        Case 8
            KeyAscii = 8
            
        Case 46
            KeyAscii = 46
            
        Case 127
            KeyAscii = 127
            
        Case Else
            
            If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
                
                KeyAscii = 0
                
            End If
        
    End Select

End Sub
