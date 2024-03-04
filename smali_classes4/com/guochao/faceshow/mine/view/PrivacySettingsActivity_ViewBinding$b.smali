.class Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$b;
.super Lbutterknife/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$b;->b:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    invoke-direct {p0}, Lbutterknife/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$b;->a:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
