.class public Lorg/light/lightAssetKit/components/SoftAnchorData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public anchor_node_indices_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public anchor_target_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/SoftAnchorData;->anchor_target_:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SoftAnchorData;->anchor_node_indices_:Ljava/util/ArrayList;

    return-void
.end method
