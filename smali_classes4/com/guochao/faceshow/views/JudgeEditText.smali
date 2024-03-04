.class public Lcom/guochao/faceshow/views/JudgeEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/JudgeEditText;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/views/JudgeEditText;->a:I

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/JudgeEditText;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/JudgeEditText;->a:I

    return p0
.end method


# virtual methods
.method public b(III)V
    .locals 1

    if-lez p3, :cond_0

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/JudgeEditText$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/views/JudgeEditText$a;-><init>(Lcom/guochao/faceshow/views/JudgeEditText;I)V

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/views/JudgeEditText;->a:I

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/text/InputFilter;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    .line 3
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method
