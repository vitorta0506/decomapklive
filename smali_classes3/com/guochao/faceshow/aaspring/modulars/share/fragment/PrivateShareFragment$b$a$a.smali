.class Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/m;->c()V

    return-void
.end method
