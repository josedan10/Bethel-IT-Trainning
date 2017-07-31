VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4725
   ClientLeft      =   2910
   ClientTop       =   1845
   ClientWidth     =   9420
   LinkTopic       =   "Form1"
   ScaleHeight     =   4725
   ScaleWidth      =   9420
   Begin VB.TextBox txtNumeroAdultos 
      Height          =   495
      Left            =   5280
      TabIndex        =   8
      Top             =   1680
      Width           =   735
   End
   Begin VB.TextBox txtNumeroTiernos 
      Height          =   495
      Left            =   5280
      TabIndex        =   6
      Top             =   840
      Width           =   735
   End
   Begin VB.CommandButton Command2 
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
      Left            =   6840
      TabIndex        =   4
      Top             =   960
      Width           =   1815
   End
   Begin VB.CommandButton btnFibonacci 
      Caption         =   "Conejos"
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
      Left            =   6840
      TabIndex        =   2
      Top             =   120
      Width           =   1815
   End
   Begin VB.TextBox txtMeses 
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
      Left            =   5280
      TabIndex        =   1
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "Número de conejos adultos con los que desea iniciar"
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
      Left            =   120
      TabIndex        =   7
      Top             =   1680
      Width           =   4935
   End
   Begin VB.Label Label2 
      Caption         =   "Número de conejos tiernos con los que desea iniciar"
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
      Left            =   120
      TabIndex        =   5
      Top             =   840
      Width           =   4935
   End
   Begin VB.Label lblRespuesta 
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   3
      Top             =   3840
      Width           =   8895
   End
   Begin VB.Label Label1 
      Caption         =   "Número de meses que quiere revisar"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   4935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnFibonacci_Click()
    
    Dim Meses As Integer
    Dim Auxiliar As Integer
    Dim TotalConejos As Integer
    Dim conejosTiernos As Integer
    Dim conejosAdultos As Integer
    
    Meses = Val(txtMeses.Text)
    conejosTiernos = Val(txtNumeroTiernos.Text)
    conejosAdultos = Val(txtNumeroAdultos.Text)
    Auxiliar = 0
    
    
    For Mes = 1 To Meses
    
        
        conejosAdultos = conejosAdultos + conejosTiernos
        conejosTiernos = Auxiliar
        'conejosTiernos = conejosAdultos
        Auxiliar = conejosAdultos
    
    Next
    
    'TotalConejos = conejosTiernos + conejosAdultos
    
    lblRespuesta.Caption = "El total de conejos para el mes " & Meses & " es: " & conejosTiernos
    
End Sub

Private Sub Command2_Click()
    End
End Sub
