.class public abstract Lorg/threeten/bp/zone/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/d$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/d;
    .locals 1

    const-string v0, "offset"

    .line 1
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/threeten/bp/zone/d$a;

    invoke-direct {v0, p0}, Lorg/threeten/bp/zone/d$a;-><init>(Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;
.end method

.method public abstract b(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
.end method

.method public abstract c(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalDateTime;",
            ")",
            "Ljava/util/List<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Lorg/threeten/bp/Instant;)Z
.end method

.method public abstract e()Z
.end method

.method public abstract f(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Z
.end method
