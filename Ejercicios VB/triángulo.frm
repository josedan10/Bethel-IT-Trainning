VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5865
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9825
   LinkTopic       =   "Form1"
   ScaleHeight     =   5865
   ScaleWidth      =   9825
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Generar"
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
      Left            =   8640
      TabIndex        =   3
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox txtBase 
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
      Left            =   7800
      TabIndex        =   1
      Top             =   120
      Width           =   615
   End
   Begin VB.Label lblTriangulo 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   8.25
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4935
      Left            =   240
      TabIndex        =   2
      Top             =   720
      Width           =   9255
   End
   Begin VB.Label Label1 
      Caption         =   "Introduzca un número impar para indicar el tamaño de la base del triángulo"
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
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   7215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

    Dim base As Integer
    Dim puntos As Integer
    Dim maxPuntos As Integer
    Dim espacios As Integer
    Dim linea As String
    
    base = Val(txtBase.Text)
    espacios = 1
    
    linea = "."
      
    For cuenta = (base - 1) / 2 To 0 Step -1
    
        linea = linea & vbNewLine
        
        Select Case cuenta
            
            Case 0
                
                For i = 0 To base + 1
                    
                    If i Mod 2 = 0 Then
                        
                        linea = linea & "."
                    
                    Else
                        
                        linea = linea & " "
                    
                    End If
                
                Next
                
                Exit For
                
            
            Case Else
            
                linea = linea & "."
            
                For i = 1 To espacios
        
                    linea = linea & " "
                    
                Next
                
                linea = linea + "."
                
                espacios = espacios + 2
            
        End Select
        
    
    Next
    
    lblTriangulo.Caption = linea
    

End Sub
