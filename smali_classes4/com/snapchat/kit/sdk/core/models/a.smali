.class public final Lcom/snapchat/kit/sdk/core/models/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redirectUri"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "codeVerifier"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/models/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/snapchat/kit/sdk/core/models/a;->c:Ljava/lang/String;

    return-void
.end method
