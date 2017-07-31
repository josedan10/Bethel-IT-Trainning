VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4110
   ClientLeft      =   4305
   ClientTop       =   2775
   ClientWidth     =   6180
   LinkTopic       =   "Form1"
   ScaleHeight     =   4110
   ScaleWidth      =   6180
   Begin VB.CommandButton btnSalir 
      Caption         =   "Salir"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3840
      TabIndex        =   3
      Top             =   3120
      Width           =   1695
   End
   Begin VB.CommandButton BtnAumento 
      Caption         =   "Ver Aumento"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   720
      TabIndex        =   2
      Top             =   3120
      Width           =   1695
   End
   Begin VB.TextBox txtSalario 
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   960
      TabIndex        =   1
      Top             =   1320
      Width           =   3855
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Salario Mínimo Actual: 40638 Bs"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   120
      Width           =   4935
   End
   Begin VB.Label lblSalario 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   4
      Top             =   2040
      Width           =   5055
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Introduzca su salario para averiguar su aumento"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   720
      Width           =   5655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BtnAumento_Click()

    Dim salario As Double
    Dim salarioMin As Double
    
    salarioMin = 40638
    salario = Val(txtSalario.Text)
    
    Select Case salario
    
        Case salarioMin
        
            salario = salario + salarioMin * 0.1
            lblSalario.Caption = "Su nuevo salario es: " & salario
        
        Case Else
            
            lblSalario.Caption = "Usted no tiene aumento. Su salario es: " & salario
    
    End Select
    

End Sub

Private Sub btnSalir_Click()
    End
End Sub


Private Sub txtSalario_KeyPress(KeyAscii As Integer)

    'Las teclas permitidas son los números del 0 al 9, el punto (ascii: 46)
    'Y los códigos 127 y 8 para borrar caracteres
    
    Dim teclasPermitidas(13) As Integer
    Dim indice As Integer
    Dim flag As Boolean

    'Llenamos el arreglo con los numeros del 0 al 9
    For i = 48 To 57
    
        teclasPermitidas(indice) = i
        indice = indice + 1
        
    Next
    
    'Agregamos los otros caracteres
    teclasPermitidas(10) = 8
    teclasPermitidas(11) = 46
    teclasPermitidas(12) = 127
    
       
    'Ahora verificamos que la tecla presionada no sea ninguna de las que estan permitidas
    flag = False
    For Each codigo In teclasPermitidas
    
        Select Case KeyAscii
        
            'Si la tecla es igual al codigo, entonces es una tecla permitida
            'Rompemos el ciclo para no seguir verificando con las demás
            Case codigo
                flag = True
                Exit For
                
        End Select
    
    Next
    
    'Si flag = flase quiere decir que no es ninguna de las teclas permitidas
    If Not flag Then
        
      KeyAscii = 0
      
    End If
    

End Sub
