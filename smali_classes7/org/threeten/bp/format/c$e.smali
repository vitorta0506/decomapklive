.class final Lorg/threeten/bp/format/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-char p1, p0, Lorg/threeten/bp/format/c$e;->a:C

    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_0

    not-int p1, p3

    return p1

    .line 2
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 3
    iget-char v0, p0, Lorg/threeten/bp/format/c$e;->a:C

    invoke-virtual {p1, v0, p2}, Lorg/threeten/bp/format/d;->c(CC)Z

    move-result p1

    if-nez p1, :cond_1

    not-int p1, p3

    return p1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    return p3
.end method

.method public b(Lorg/threeten/bp/format/e;Ljava/lang/StringBuilder;)Z
    .locals 0

    iget-char p1, p0, Lorg/threeten/bp/format/c$e;->a:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-char v0, p0, Lorg/threeten/bp/format/c$e;->a:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    const-string v0, "\'\'"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lorg/threeten/bp/format/c$e;->a:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
