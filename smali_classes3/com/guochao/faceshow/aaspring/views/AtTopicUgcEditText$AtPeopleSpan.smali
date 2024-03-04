.class Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;
.super Landroid/text/style/StyleSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtPeopleSpan"
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/StyleSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
