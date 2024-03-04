.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$a;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->b0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 3
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0f032c

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p3, 0x7f0f0333

    const/4 p4, 0x4

    invoke-static {p2, p1, p3, p4}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$a;->c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->b0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p4, 0x7f0f0333

    const/4 v0, 0x4

    .line 3
    invoke-static {p2, p1, p4, v0}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 4
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$a;->a(Ljava/lang/Throwable;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
