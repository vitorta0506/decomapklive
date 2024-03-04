.class Lcom/guochao/faceshow/views/JudgeEditText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/JudgeEditText;->b(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/views/JudgeEditText;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/JudgeEditText;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/JudgeEditText$a;->b:Lcom/guochao/faceshow/views/JudgeEditText;

    iput p2, p0, Lcom/guochao/faceshow/views/JudgeEditText$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, ""

    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "\\."

    .line 3
    invoke-virtual {p4, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    .line 4
    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 5
    aget-object p4, p5, v2

    .line 6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    iget v1, p0, Lcom/guochao/faceshow/views/JudgeEditText$a;->a:I

    if-lt p4, v1, :cond_1

    return-object p6

    .line 7
    :cond_1
    aget-object p4, p5, v3

    .line 8
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p4, v3

    iget-object p5, p0, Lcom/guochao/faceshow/views/JudgeEditText$a;->b:Lcom/guochao/faceshow/views/JudgeEditText;

    invoke-static {p5}, Lcom/guochao/faceshow/views/JudgeEditText;->a(Lcom/guochao/faceshow/views/JudgeEditText;)I

    move-result p5

    sub-int/2addr p4, p5

    if-lez p4, :cond_3

    sub-int/2addr p3, p4

    .line 9
    :try_start_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 10
    :cond_2
    aget-object p2, p5, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget p3, p0, Lcom/guochao/faceshow/views/JudgeEditText$a;->a:I

    if-lt p2, p3, :cond_3

    const-string p2, "."

    invoke-virtual {p4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object p6

    :catch_0
    :cond_3
    return-object v0
.end method
