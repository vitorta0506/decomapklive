.class Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->k0(Landroid/widget/CompoundButton;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$f;->b:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$f;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$f;->a:Landroid/widget/CompoundButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method
