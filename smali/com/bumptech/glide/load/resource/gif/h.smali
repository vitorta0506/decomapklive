.class public final Lcom/bumptech/glide/load/resource/gif/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/d<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Le0/d;->f(Ljava/lang/String;Ljava/lang/Object;)Le0/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/h;->a:Le0/d;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Le0/d;->f(Ljava/lang/String;Ljava/lang/Object;)Le0/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/h;->b:Le0/d;

    return-void
.end method
