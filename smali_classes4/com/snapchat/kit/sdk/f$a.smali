.class final Lcom/snapchat/kit/sdk/f$a;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "invalid_grant"

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "invalid_request"

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "invalid_scope"

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "unsupported_grant_type"

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
