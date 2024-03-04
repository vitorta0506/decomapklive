.class final Lorg/threeten/bp/a$a;
.super Lorg/threeten/bp/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d8b8814510769ebL


# instance fields
.field private final a:Lorg/threeten/bp/ZoneId;


# direct methods
.method constructor <init>(Lorg/threeten/bp/ZoneId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/a;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/threeten/bp/a$a;->a:Lorg/threeten/bp/ZoneId;

    return-void
.end method


# virtual methods
.method public a()Lorg/threeten/bp/ZoneId;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/a$a;->a:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method public b()Lorg/threeten/bp/Instant;
    .locals 2

    invoke-virtual {p0}, Lorg/threeten/bp/a$a;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/threeten/bp/a$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/a$a;->a:Lorg/threeten/bp/ZoneId;

    check-cast p1, Lorg/threeten/bp/a$a;

    iget-object p1, p1, Lorg/threeten/bp/a$a;->a:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/a$a;->a:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/a$a;->a:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
