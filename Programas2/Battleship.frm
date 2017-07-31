VERSION 5.00
Begin VB.Form Battleship 
   BackColor       =   &H80000002&
   Caption         =   "Battleship By JD :3"
   ClientHeight    =   8145
   ClientLeft      =   3375
   ClientTop       =   465
   ClientWidth     =   9285
   LinkTopic       =   "Form1"
   ScaleHeight     =   8145
   ScaleWidth      =   9285
   Begin VB.CommandButton Comenzar 
      Appearance      =   0  'Flat
      BackColor       =   &H0000C000&
      Caption         =   "¡Comenzar!"
      BeginProperty Font 
         Name            =   "Showcard Gothic"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3480
      MaskColor       =   &H0080C0FF&
      TabIndex        =   12
      Top             =   7440
      Width           =   2295
   End
   Begin VB.Label Label5 
      BackColor       =   &H80000002&
      Caption         =   "X: Nave eliminada"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   480
      TabIndex        =   107
      Top             =   7680
      Width           =   2415
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000002&
      Caption         =   "F: Fallaste"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      TabIndex        =   106
      Top             =   7320
      Width           =   2415
   End
   Begin VB.Label lblDisparosDisponibles 
      BackColor       =   &H80000002&
      Caption         =   "20"
      BeginProperty Font 
         Name            =   "Showcard Gothic"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6840
      TabIndex        =   105
      Top             =   720
      Width           =   375
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000002&
      Caption         =   "Disparos Disponibles:"
      BeginProperty Font 
         Name            =   "Showcard Gothic"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3840
      TabIndex        =   104
      Top             =   720
      Width           =   2895
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   99
      Left            =   480
      TabIndex        =   103
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   98
      Left            =   1320
      TabIndex        =   102
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   97
      Left            =   2160
      TabIndex        =   101
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   96
      Left            =   3000
      TabIndex        =   100
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   95
      Left            =   3840
      TabIndex        =   99
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   94
      Left            =   4680
      TabIndex        =   98
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   93
      Left            =   5520
      TabIndex        =   97
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   92
      Left            =   6360
      TabIndex        =   96
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   91
      Left            =   7200
      TabIndex        =   95
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Index           =   90
      Left            =   8040
      TabIndex        =   94
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   89
      Left            =   480
      TabIndex        =   93
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   88
      Left            =   1320
      TabIndex        =   92
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   87
      Left            =   2160
      TabIndex        =   91
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   86
      Left            =   3000
      TabIndex        =   90
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   85
      Left            =   3840
      TabIndex        =   89
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   84
      Left            =   4680
      TabIndex        =   88
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   83
      Left            =   5520
      TabIndex        =   87
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   82
      Left            =   6360
      TabIndex        =   86
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   81
      Left            =   7200
      TabIndex        =   85
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   80
      Left            =   8040
      TabIndex        =   84
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   79
      Left            =   480
      TabIndex        =   83
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   78
      Left            =   1320
      TabIndex        =   82
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   77
      Left            =   2160
      TabIndex        =   81
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   76
      Left            =   3000
      TabIndex        =   80
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   75
      Left            =   3840
      TabIndex        =   79
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   74
      Left            =   4680
      TabIndex        =   78
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   73
      Left            =   5520
      TabIndex        =   77
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   72
      Left            =   6360
      TabIndex        =   76
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   71
      Left            =   7200
      TabIndex        =   75
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   70
      Left            =   8040
      TabIndex        =   74
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   69
      Left            =   480
      TabIndex        =   73
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   68
      Left            =   1320
      TabIndex        =   72
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   67
      Left            =   2160
      TabIndex        =   71
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   66
      Left            =   3000
      TabIndex        =   70
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   65
      Left            =   3840
      TabIndex        =   69
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   64
      Left            =   4680
      TabIndex        =   68
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   63
      Left            =   5520
      TabIndex        =   67
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   62
      Left            =   6360
      TabIndex        =   66
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   61
      Left            =   7200
      TabIndex        =   65
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   60
      Left            =   8040
      TabIndex        =   64
      Top             =   4800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   59
      Left            =   480
      TabIndex        =   63
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   58
      Left            =   1320
      TabIndex        =   62
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   57
      Left            =   2160
      TabIndex        =   61
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   56
      Left            =   3000
      TabIndex        =   60
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   55
      Left            =   3840
      TabIndex        =   59
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   54
      Left            =   4680
      TabIndex        =   58
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   53
      Left            =   5520
      TabIndex        =   57
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   52
      Left            =   6360
      TabIndex        =   56
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   51
      Left            =   7200
      TabIndex        =   55
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   50
      Left            =   8040
      TabIndex        =   54
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   49
      Left            =   480
      TabIndex        =   53
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   48
      Left            =   1320
      TabIndex        =   52
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   47
      Left            =   2160
      TabIndex        =   51
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   46
      Left            =   3000
      TabIndex        =   50
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   45
      Left            =   3840
      TabIndex        =   49
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   44
      Left            =   4680
      TabIndex        =   48
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   43
      Left            =   5520
      TabIndex        =   47
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   42
      Left            =   6360
      TabIndex        =   46
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   41
      Left            =   7200
      TabIndex        =   45
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   40
      Left            =   8040
      TabIndex        =   44
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   39
      Left            =   480
      TabIndex        =   43
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   38
      Left            =   1320
      TabIndex        =   42
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   37
      Left            =   2160
      TabIndex        =   41
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   36
      Left            =   3000
      TabIndex        =   40
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   35
      Left            =   3840
      TabIndex        =   39
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   34
      Left            =   4680
      TabIndex        =   38
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   33
      Left            =   5520
      TabIndex        =   37
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   32
      Left            =   6360
      TabIndex        =   36
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   31
      Left            =   7200
      TabIndex        =   35
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   30
      Left            =   8040
      TabIndex        =   34
      Top             =   3000
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   29
      Left            =   480
      TabIndex        =   33
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   28
      Left            =   1320
      TabIndex        =   32
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   27
      Left            =   2160
      TabIndex        =   31
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   26
      Left            =   3000
      TabIndex        =   30
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   25
      Left            =   3840
      TabIndex        =   29
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   24
      Left            =   4680
      TabIndex        =   28
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   23
      Left            =   5520
      TabIndex        =   27
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   22
      Left            =   6360
      TabIndex        =   26
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   21
      Left            =   7200
      TabIndex        =   25
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   20
      Left            =   8040
      TabIndex        =   24
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000002&
      Caption         =   "BATTLESHIP"
      BeginProperty Font 
         Name            =   "Pristina"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000005&
      Height          =   495
      Left            =   1200
      TabIndex        =   23
      Top             =   0
      Width           =   6495
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   19
      Left            =   480
      TabIndex        =   22
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   18
      Left            =   1320
      TabIndex        =   21
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   17
      Left            =   2160
      TabIndex        =   20
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   16
      Left            =   3000
      TabIndex        =   19
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   15
      Left            =   3840
      TabIndex        =   18
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   14
      Left            =   4680
      TabIndex        =   17
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   13
      Left            =   5520
      TabIndex        =   16
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   12
      Left            =   6360
      TabIndex        =   15
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   11
      Left            =   7200
      TabIndex        =   14
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   10
      Left            =   8040
      TabIndex        =   13
      Top             =   1800
      Width           =   615
   End
   Begin VB.Label LblNavesRestantes 
      Alignment       =   2  'Center
      BackColor       =   &H80000002&
      Caption         =   "10"
      BeginProperty Font 
         Name            =   "Showcard Gothic"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   11
      Top             =   720
      Width           =   495
   End
   Begin VB.Label lblTitle2 
      BackColor       =   &H80000002&
      Caption         =   "NAVES Restantes:"
      BeginProperty Font 
         Name            =   "Showcard Gothic"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   10
      Top             =   720
      Width           =   2295
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   9
      Left            =   8040
      TabIndex        =   9
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   8
      Left            =   7200
      TabIndex        =   8
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   7
      Left            =   6360
      TabIndex        =   7
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   6
      Left            =   5520
      TabIndex        =   6
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   5
      Left            =   4680
      TabIndex        =   5
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   3840
      TabIndex        =   4
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   3000
      TabIndex        =   3
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   2160
      TabIndex        =   2
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   1320
      TabIndex        =   1
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   480
      TabIndex        =   0
      Top             =   1200
      Width           =   615
   End
End
Attribute VB_Name = "Battleship"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Tablero(100) As String 'Arreglo para el tablero con las naves
'N : nave enemiga
'O : casilla vacía
'X : nave enemiga destruida
'F : disparo errado


Private Sub Comenzar_Click()

    'REINICIO
    For Each Label In Label2
        If Label.Caption <> "" Then
            Label.Caption = ""
        
        End If
    Next
    
    LblNavesRestantes.Caption = 10
    lblDisparosDisponibles.Caption = 20
    
    'GENERACION ALEATORIA DE NAVES
    Randomize
    
    Dim Naves(10) As Integer   'Arreglo para las posiciones aleatorias
    
    'Generamos 10 numeros aleatorios que seran las posiciones en "Tablero" donde estaran ...
    '... las naves
    For i = 0 To 9
        Naves(i) = Rnd * 100
    
    Next
    
    'Tablero vacío con puras "O"
    For i = 0 To 99
        Tablero(i) = "O"
    
    Next
    
    'Sustituimos las posiciones generadas con "N"
    For Each num In Naves
        Tablero(num) = "N"
    
    Next
    
    Comenzar.Caption = "¡REINICIAR!"

End Sub


'Aqui hago que cada Label2 tenga el mismo evento
Private Sub Label2_Click(Index As Integer)

    Dim Casilla As String    'Valor de la casilla en Tablero
    Dim Disparos As Integer  'Disparos restantes
    Dim Naves As Integer     'Naves restantes
    Dim Respuesta As Integer 'Respuesta del usuario
    
    Casilla = Tablero(Index)
    
    Select Case Casilla

        Case "N"    'Caso casilla con nave sin destruir
            Tablero(Index) = "X"
            Label2(Index).Caption = "X"
            Label2(Index).ForeColor = &HFF&
            
            'Le damos dos oportunidades más al jugador por cada nave destruida
            lblDisparosDisponibles.Caption = Val(lblDisparosDisponibles.Caption) + 2
            
            'Le restamos una nave
            LblNavesRestantes.Caption = Val(LblNavesRestantes.Caption) - 1
        
        Case "O"   'Caso casilla vacía
            Tablero(Index) = "F"
            Label2(Index).Caption = "F"
            
            'Le descontamos un intento al jugador
            lblDisparosDisponibles.Caption = Val(lblDisparosDisponibles.Caption) - 1
            
        Case Else  'El resto de casillas no se pueden atacar
            Respuesta = MsgBox("No puedes atacar esta casilla", vbOKOnly, "Ataque no permitido")
            
    End Select
    
    
    'CONDICION DE FINALIZACION DEL JUEGO
    Disparos = Val(lblDisparosDisponibles.Caption)
    Naves = Val(LblNavesRestantes.Caption)
    
    If Naves = 0 Then
        'El jugador gana, mandar msj
        Respuesta = MsgBox("¡Has ganado! ¿Desea comenzar una nueva partida?", vbYesNo + vbQuestion)
        If Respuesta <> 6 Then
            End
            
        Else
           For Each Label In Label2
                If Label.Caption <> "" Then
                    Label.Caption = ""
                    Label.ForeColor = &H80000012
                
                End If
            Next
            
            LblNavesRestantes.Caption = 10
            lblDisparosDisponibles.Caption = 20
            
            For i = 0 To 99
                Tablero(i) = "X"
            
            Next
            
            Comenzar.Caption = "¡Comenzar!"
            
        End If
        
    ElseIf Disparos = 0 And Naves > 0 Then
        'El jugador pierde, mandar msj
        Respuesta = MsgBox("¡Has perdido! :( ¿Desea comenzar una nueva partida?", vbYesNo + vbQuestion, "Mensaje")
        
        If Respuesta <> 6 Then
            End
            
        Else
           For Each Label In Label2
                If Label.Caption <> "" Then
                    Label.Caption = ""
                    Label.ForeColor = &H80000012
                
                End If
            Next
            
            LblNavesRestantes.Caption = 10
            lblDisparosDisponibles.Caption = 20
            
            For i = 0 To 99
                Tablero(i) = "X"
            
            Next
            
            Comenzar.Caption = "¡Comenzar!"
            
        End If
    End If
    
    
End Sub
