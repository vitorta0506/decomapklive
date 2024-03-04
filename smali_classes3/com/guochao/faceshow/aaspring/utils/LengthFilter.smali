.class public Lcom/guochao/faceshow/aaspring/utils/LengthFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/LengthFilter;->mMax:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->length(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->length(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    .line 2
    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/LengthFilter;->mMax:I

    if-le p2, p3, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method
