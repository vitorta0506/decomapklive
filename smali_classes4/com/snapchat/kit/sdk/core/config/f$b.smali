.class final Lcom/snapchat/kit/sdk/core/config/f$b;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/config/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/kit/sdk/core/config/f;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/core/config/f;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f$b;->a:Lcom/snapchat/kit/sdk/core/config/f;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "kitVersion"

    const-string v0, "1.13.2"

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
