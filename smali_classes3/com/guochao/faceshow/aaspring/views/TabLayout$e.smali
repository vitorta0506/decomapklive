.class public Lcom/guochao/faceshow/aaspring/views/TabLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Z

.field private c:Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

.field private d:Lcom/guochao/faceshow/aaspring/views/TabLayout;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/views/TabLayout$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/guochao/faceshow/aaspring/views/TabLayout$f;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->c:Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->b:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->c:Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->setSelected(Z)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->c:Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->d:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->p(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->c:Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->d:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->q(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/views/TabLayout$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->c:Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Lcom/guochao/faceshow/aaspring/views/TabLayout$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->d:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    return-object p0
.end method
