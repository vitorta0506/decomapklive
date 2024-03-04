.class Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->r0(Lte/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-static {p1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$b;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
