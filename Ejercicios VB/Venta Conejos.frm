VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5625
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8085
   LinkTopic       =   "Form1"
   ScaleHeight     =   5625
   ScaleWidth      =   8085
   StartUpPosition =   3  'Windows Default
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
      Height          =   735
      Left            =   6240
      TabIndex        =   9
      Top             =   4680
      Width           =   1575
   End
   Begin VB.CommandButton btnCalcular 
      Caption         =   "Calcular"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3960
      TabIndex        =   8
      Top             =   4680
      Width           =   1575
   End
   Begin VB.TextBox txtPrecioNegro 
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
      Height          =   615
      Left            =   6960
      TabIndex        =   7
      Top             =   1200
      Width           =   975
   End
   Begin VB.TextBox txtCantidadNegros 
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
      Height          =   615
      Left            =   7320
      TabIndex        =   6
      Top             =   120
      Width           =   615
   End
   Begin VB.TextBox txtPrecioBlancos 
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
      Height          =   615
      Left            =   3120
      TabIndex        =   5
      Top             =   1200
      Width           =   975
   End
   Begin VB.TextBox txtCantidadBlancos 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      TabIndex        =   4
      Top             =   120
      Width           =   615
   End
   Begin VB.Label lblConejosMasVendidos 
      Caption         =   "Conejos más vendidos:"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   12
      Top             =   3960
      Width           =   4815
   End
   Begin VB.Label lblTotalVenta 
      Caption         =   "Monto Total de la venta:"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   11
      Top             =   3120
      Width           =   4815
   End
   Begin VB.Label lblTotalVendidos 
      Caption         =   "Cantidad de Conejos vendidos:"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   10
      Top             =   2280
      Width           =   4815
   End
   Begin VB.Label Label4 
      Caption         =   "Precio de conejos NEGROS:"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   3
      Top             =   1320
      Width           =   3015
   End
   Begin VB.Label Label3 
      Caption         =   "Precio de conejos BLANCOS:"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   1320
      Width           =   3015
   End
   Begin VB.Label Label2 
      Caption         =   "Cantidad de conejos NEGROS:"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   1
      Top             =   240
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "Cantidad de conejos BLANCOS:"
      BeginProperty Font 
         Name            =   "Lucida Sans"
         Size            =   9.75
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
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnCalcular_Click()
    
    Dim conejosNegros As Integer
    Dim conejosBlancos As Integer
    Dim precioBlanco As Double
    Dim precioNegro As Double
    
    conejosNegros = Val(txtCantidadNegros.Text)
    conejosBlancos = Val(txtCantidadBlancos.Text)
    precioBlanco = Val(txtPrecioBlancos.Text)
    precioNegro = Val(txtPrecioNegro.Text)
    
    'Conejos mas vendidos
    If conejosNegros = conejosBlancos Then
    
        lblConejosMasVendidos.Caption = "Conejos más vendidos: Ambos"
        
    ElseIf conejosNegros < conejosBlancos Then
        
        lblConejosMasVendidos.Caption = "Conejos más vendidos: Conejos Blancos"
        
    Else
    
        lblConejosMasVendidos.Caption = "Conejos más vendidos: Conejos Negros"
        
    End If
    
    'Total Conejos Vendidos
    lblTotalVendidos = "Cantidad de conejos vendidos: " & conejosNegros + conejosBlancos
    
    'Monto Total de la Venta
    lblTotalVenta = "Monto Total de la venta: " & conejosNegros * precioNegro + conejosBlancos * precioBlanco
    
End Sub

Private Sub btnSalir_Click()
    End
End Sub

Private Sub txtCantidadBlancos_KeyPress(KeyAscii As Integer)

    'Códigos ASCII
    'BACKSPACE = 8
    '. = 46
    'DEL = 127
    
    Select Case KeyAscii
    
        Case 8
            KeyAscii = 8
            
        Case 127
            KeyAscii = 127
            
        Case Else
        
            If KeyAscii < 48 Or KeyAscii > 57 Then
            
                KeyAscii = 0
            
            End If
            
    End Select

End Sub


Private Sub txtCantidadNegros_KeyPress(KeyAscii As Integer)

    'Códigos ASCII
    'BACKSPACE = 8
    '. = 46
    'DEL = 127
    
    Select Case KeyAscii
    
        Case 8
            KeyAscii = 8
            
        Case 127
            KeyAscii = 127
            
        Case Else
        
            If KeyAscii < 48 Or KeyAscii > 57 Then
            
                KeyAscii = 0
            
            End If
            
    End Select

End Sub

Private Sub txtPrecioBlancos_KeyPress(KeyAscii As Integer)

    'Códigos ASCII
    'BACKSPACE = 8
    '. = 46
    'DEL = 127
    
    Select Case KeyAscii
    
        Case 8
            KeyAscii = 8
        
        Case 46
            KeyAscii = 46
            
        Case 127
            KeyAscii = 127
            
        Case Else
        
            If KeyAscii < 48 Or KeyAscii > 57 Then
            
                KeyAscii = 0
            
            End If
            
    End Select

End Sub

Private Sub txtPreciNegro_KeyPress(KeyAscii As Integer)

    'Códigos ASCII
    'BACKSPACE = 8
    '. = 46
    'DEL = 127
    
    Select Case KeyAscii
    
        Case 8
            KeyAscii = 8
        
        Case 46
            KeyAscii = 46
            
        Case 127
            KeyAscii = 127
            
        Case Else
        
            If KeyAscii < 48 Or KeyAscii > 57 Then
            
                KeyAscii = 0
            
            End If
            
    End Select

End Sub
