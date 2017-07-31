VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3960
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6465
   LinkTopic       =   "Form1"
   ScaleHeight     =   3960
   ScaleWidth      =   6465
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdReset 
      Caption         =   "RESET"
      BeginProperty Font 
         Name            =   "Franklin Gothic Heavy"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4200
      TabIndex        =   2
      Top             =   2880
      Width           =   1695
   End
   Begin VB.CommandButton cmdDetener 
      Caption         =   "DETENER"
      BeginProperty Font 
         Name            =   "Franklin Gothic Heavy"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   1
      Top             =   2880
      Width           =   1575
   End
   Begin VB.CommandButton cmdInicio 
      Caption         =   "INICIO"
      BeginProperty Font 
         Name            =   "Franklin Gothic Heavy"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   2880
      Width           =   1695
   End
   Begin VB.Timer Timer1 
      Left            =   120
      Top             =   120
   End
   Begin VB.Label lblSegundos 
      Alignment       =   2  'Center
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4200
      TabIndex        =   7
      Top             =   1200
      Width           =   735
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   ":"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3720
      TabIndex        =   6
      Top             =   1200
      Width           =   375
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   ":"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2400
      TabIndex        =   5
      Top             =   1200
      Width           =   375
   End
   Begin VB.Label lblMinutos 
      Alignment       =   2  'Center
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2880
      TabIndex        =   4
      Top             =   1200
      Width           =   735
   End
   Begin VB.Label lblHoras 
      Alignment       =   2  'Center
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1560
      TabIndex        =   3
      Top             =   1200
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim segundos As Integer, minutos As Integer, horas As Integer

Private Sub cmdDetener_Click()
    Timer1.Interval = 0
End Sub

Private Sub cmdInicio_Click()
    Timer1.Interval = 10
End Sub

Private Sub cmdReset_Click()
    lblSegundos.Caption = "00"
    lblMinutos.Caption = "00"
    lblHoras.Caption = "00"
    
    segundos = 0
    minutos = 0
    horas = 0
    
End Sub

Private Sub Timer1_Timer()
    
    Select Case segundos
        Case 60
            segundos = 0
            minutos = minutos + 1
            
            lblSegundos.Caption = "0" & segundos
            
            If minutos < 10 Then
                lblMinutos.Caption = "0" & minutos
            Else
                lblMinutos.Caption = minutos
            End If
            
            
        Case Else
            segundos = segundos + 1
        
    End Select
    
    Select Case minutos
        Case 60
            minutos = 0
            horas = horas + 1
            lblMinutos.Caption = "0" & minutos
            
            lblHoras.Caption = (horas)
            
            If horas < 10 Then
                lblHoras.Caption = "0" & horas
            Else
                lblHoras.Caption = horas
            End If
    
    End Select
    
    If segundos < 10 Then
        lblSegundos.Caption = "0" & segundos
    Else
        lblSegundos.Caption = segundos
    End If
    
End Sub
