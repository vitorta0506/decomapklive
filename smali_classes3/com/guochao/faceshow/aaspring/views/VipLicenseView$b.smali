.class Lcom/guochao/faceshow/aaspring/views/VipLicenseView$b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->b(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/VipLicenseView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/VipLicenseView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView$b;->a:Lcom/guochao/faceshow/aaspring/views/VipLicenseView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView$b;->a:Lcom/guochao/faceshow/aaspring/views/VipLicenseView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->goPrivacy(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipLicenseView$b;->a:Lcom/guochao/faceshow/aaspring/views/VipLicenseView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/VipLicenseView;->a(Lcom/guochao/faceshow/aaspring/views/VipLicenseView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
