.class final Lorg/threeten/bp/format/c$p;
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
    name = "p"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/threeten/bp/format/c$p;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;I)I
    .locals 7

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-ltz p3, :cond_1

    .line 2
    iget-object v4, p0, Lorg/threeten/bp/format/c$p;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/threeten/bp/format/d;->u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-nez p1, :cond_0

    not-int p1, p3

    return p1

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/threeten/bp/format/c$p;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public b(Lorg/threeten/bp/format/e;Ljava/lang/StringBuilder;)Z
    .locals 0

    iget-object p1, p0, Lorg/threeten/bp/format/c$p;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/c$p;->a:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
