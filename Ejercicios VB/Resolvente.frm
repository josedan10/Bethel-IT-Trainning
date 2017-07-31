VERSION 5.00
Begin VB.Form ResolventeForm 
   Caption         =   "Resolvente"
   ClientHeight    =   3555
   ClientLeft      =   3645
   ClientTop       =   2460
   ClientWidth     =   5865
   LinkTopic       =   "Form1"
   ScaleHeight     =   3555
   ScaleWidth      =   5865
   Begin VB.TextBox txtCoeficienteC 
      Height          =   525
      Left            =   1680
      TabIndex        =   7
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtCoeficienteB 
      Height          =   525
      Left            =   1680
      TabIndex        =   6
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtCoeficienteA 
      Height          =   525
      Left            =   1680
      TabIndex        =   5
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton Exit 
      Caption         =   "Salir"
      Height          =   735
      Left            =   2520
      TabIndex        =   1
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton Resolvente 
      Caption         =   "Calcular Raíces"
      Height          =   735
      Left            =   720
      TabIndex        =   0
      Top             =   2520
      Width           =   1455
   End
   Begin VB.Label lblRaices 
      Height          =   855
      Left            =   2760
      TabIndex        =   8
      Top             =   720
      Width           =   2775
   End
   Begin VB.Label lblCoeficienteB 
      Caption         =   "Coeficiente B"
      Height          =   255
      Index           =   1
      Left            =   360
      TabIndex        =   4
      Top             =   960
      Width           =   975
   End
   Begin VB.Label lblCoeficienteC 
      Caption         =   "Coeficiente C"
      Height          =   255
      Index           =   0
      Left            =   360
      TabIndex        =   3
      Top             =   1680
      Width           =   975
   End
   Begin VB.Label lblCoeficienteA 
      Caption         =   "Coeficiente A"
      Height          =   255
      Left            =   360
      TabIndex        =   2
      Top             =   240
      Width           =   975
   End
End
Attribute VB_Name = "ResolventeForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Exit_Click()

    End

End Sub

Private Sub Resolvente_Click()
    
    Dim x1 As Double
    Dim x2 As Double
    Dim A As Integer
    Dim B As Integer
    Dim C As Integer
    Dim Discriminante As Double
    
    A = Val(txtCoeficienteA.Text)
    B = Val(txtCoeficienteB.Text)
    C = Val(txtCoeficienteC.Text)
    Discriminante = (B ^ 2) - 4 * A * C
    
    Select Case A
        Case 0
        
            x1 = -C / B
            lblRaices.Caption = "La raíz de esta ecuación es: " & x1
            
            
        Case Else
        
            If Discriminante < 0 Then
                Discriminante = Discriminante * (-1)
                
                lblRaices.Caption = "Las raíces de esta ecuación son:      x1= " & -B / 2 * A & -((Discriminante) ^ (1 / 2)) / (2 * A) & "i" & "                 x2= " & -B / 2 * A & "+" & ((Discriminante) ^ (1 / 2)) / (2 * A) & "i"
                
            Else
                x1 = (-B + ((Discriminante) ^ (1 / 2))) / (2 * A)
                x2 = (-B - ((Discriminante) ^ (1 / 2))) / (2 * A)
            
                lblRaices.Caption = "Las raíces de esta ecuación son:               x1= " & x1 & "                x2= " & x2
                
            End If
                

    End Select
    
    
    
End Sub

Private Sub txtCoeficienteA_KeyPress(KeyAscii As Integer)

    Select Case KeyAscii
    
        Case 127
            KeyAscii = 127
        
        Case 8
            KeyAscii = 8
            
        Case 45
            KeyAscii = 45
            
        Case Else
        
            If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
            
                KeyAscii = 0
                
            End If
                
    
    End Select
    

    
End Sub

Private Sub txtCoeficienteB_KeyPress(KeyAscii As Integer)

    Select Case KeyAscii
    
        Case 127
            KeyAscii = 127
            
        Case 8
            KeyAscii = 8
            
        Case 45
            KeyAscii = 45
            
        Case Else
        
            If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
            
                KeyAscii = 0
                
            End If
                
    
    End Select
    

    
End Sub

Private Sub txtCoeficienteC_KeyPress(KeyAscii As Integer)

    Select Case KeyAscii
    
        Case 127
            KeyAscii = 127
            
        Case 8
            KeyAscii = 8
            
        Case 45
            KeyAscii = 45
            
        Case Else
        
            If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
            
                KeyAscii = 0
                
            End If
                
    
    End Select
    

    
End Sub


