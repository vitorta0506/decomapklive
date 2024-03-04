.class Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopicOrAtClickSpan"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TopicOrAt"


# instance fields
.field private mColor:I

.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->this$0:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->mText:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->mColor:I

    return-void
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
