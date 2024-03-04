.class Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$b;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$b;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$b$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$b$a;-><init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$b;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
