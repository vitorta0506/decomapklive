.class public final synthetic Lcom/guochao/faceshow/guild/activity/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/k0;->a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/k0;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/guochao/faceshow/guild/activity/k0;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/k0;->a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/k0;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/guochao/faceshow/guild/activity/k0;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;->c(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/ArrayList;ILandroid/view/View;)V

    return-void
.end method
