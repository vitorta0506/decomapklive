.class final Lorg/threeten/bp/format/c$f;
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
    name = "f"
.end annotation


# instance fields
.field private final a:Lorg/threeten/bp/format/TextStyle;


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/TextStyle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/threeten/bp/format/c$f;->a:Lorg/threeten/bp/format/TextStyle;

    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/CharSequence;I)I
    .locals 11

    if-ltz p3, :cond_3

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_3

    .line 2
    invoke-static {}, Lorg/threeten/bp/chrono/i;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/chrono/i;

    .line 4
    invoke-virtual {v3}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v2, :cond_0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v9, v10

    .line 6
    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/d;->u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    move v2, v10

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    not-int p1, p3

    return p1

    .line 7
    :cond_2
    invoke-virtual {p1, v1}, Lorg/threeten/bp/format/d;->p(Lorg/threeten/bp/chrono/i;)V

    add-int/2addr p3, v2

    return p3

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public b(Lorg/threeten/bp/format/e;Ljava/lang/StringBuilder;)Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->a()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/e;->g(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/i;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/c$f;->a:Lorg/threeten/bp/format/TextStyle;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/format/e;->c()Ljava/util/Locale;

    move-result-object p1

    const-class v1, Lorg/threeten/bp/format/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.threeten.bp.format.ChronologyText"

    .line 5
    invoke-static {v2, p1, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
