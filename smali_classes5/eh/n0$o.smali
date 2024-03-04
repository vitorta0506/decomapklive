.class final Leh/n0$o;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Leh/n0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leh/n0$o;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Leh/n0$f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Leh/n0$o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
