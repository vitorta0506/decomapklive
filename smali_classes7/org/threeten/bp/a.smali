.class public abstract Lorg/threeten/bp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/a$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/a;
    .locals 1

    const-string v0, "zone"

    .line 1
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/threeten/bp/a$a;

    invoke-direct {v0, p0}, Lorg/threeten/bp/a$a;-><init>(Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static d()Lorg/threeten/bp/a;
    .locals 2

    new-instance v0, Lorg/threeten/bp/a$a;

    invoke-static {}, Lorg/threeten/bp/ZoneId;->systemDefault()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/a$a;-><init>(Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static e()Lorg/threeten/bp/a;
    .locals 2

    new-instance v0, Lorg/threeten/bp/a$a;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v0, v1}, Lorg/threeten/bp/a$a;-><init>(Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lorg/threeten/bp/ZoneId;
.end method

.method public abstract b()Lorg/threeten/bp/Instant;
.end method
