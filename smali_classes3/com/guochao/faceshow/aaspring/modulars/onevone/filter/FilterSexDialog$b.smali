.class Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
