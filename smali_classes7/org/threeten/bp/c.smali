.class final Lorg/threeten/bp/c;
.super Lorg/threeten/bp/ZoneId;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x746262147bb70e18L


# instance fields
.field private final a:Ljava/lang/String;

.field private final transient b:Lorg/threeten/bp/zone/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[A-Za-z][A-Za-z0-9~/._+-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/c;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/threeten/bp/zone/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/ZoneId;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/threeten/bp/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/threeten/bp/c;->b:Lorg/threeten/bp/zone/d;

    return-void
.end method

.method static a(Ljava/lang/String;Z)Lorg/threeten/bp/c;
    .locals 3

    const-string v0, "zoneId"

    .line 1
    invoke-static {p0, v0}, Ljl/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    sget-object v0, Lorg/threeten/bp/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {p0, v1}, Lorg/threeten/bp/zone/f;->c(Ljava/lang/String;Z)Lorg/threeten/bp/zone/d;

    move-result-object v0
    :try_end_0
    .catch Lorg/threeten/bp/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GMT0"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object p1, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    :goto_0
    new-instance p1, Lorg/threeten/bp/c;

    invoke-direct {p1, p0, v0}, Lorg/threeten/bp/c;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/d;)V

    return-object p1

    .line 7
    :cond_1
    throw v1

    .line 8
    :cond_2
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(Ljava/lang/String;)Lorg/threeten/bp/c;
    .locals 5

    const-string v0, "Z"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "UTC"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "UTC+"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const-string v1, "GMT+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "UTC-"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "GMT-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "UT+"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "UT-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0, v2}, Lorg/threeten/bp/c;->a(Ljava/lang/String;Z)Lorg/threeten/bp/c;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->of(Ljava/lang/String;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-nez v1, :cond_4

    .line 9
    new-instance v1, Lorg/threeten/bp/c;

    invoke-virtual {p0}, Lorg/threeten/bp/ZoneOffset;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/threeten/bp/c;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/d;)V

    return-object v1

    .line 10
    :cond_4
    new-instance v1, Lorg/threeten/bp/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/ZoneOffset;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/threeten/bp/c;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/d;)V

    return-object v1

    :cond_5
    :goto_1
    const/4 v0, 0x3

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/threeten/bp/ZoneOffset;->of(Ljava/lang/String;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v3

    if-nez v3, :cond_6

    .line 13
    new-instance v3, Lorg/threeten/bp/c;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lorg/threeten/bp/c;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/d;)V

    return-object v3

    .line 14
    :cond_6
    new-instance v3, Lorg/threeten/bp/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lorg/threeten/bp/c;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/d;)V

    return-object v3

    .line 15
    :cond_7
    :goto_2
    new-instance v0, Lorg/threeten/bp/c;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getRules()Lorg/threeten/bp/zone/d;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/c;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/d;)V

    return-object v0

    .line 16
    :cond_8
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static c(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lorg/threeten/bp/c;->b(Ljava/lang/String;)Lorg/threeten/bp/c;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/b;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Lorg/threeten/bp/zone/d;
    .locals 2

    iget-object v0, p0, Lorg/threeten/bp/c;->b:Lorg/threeten/bp/zone/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/threeten/bp/zone/f;->c(Ljava/lang/String;Z)Lorg/threeten/bp/zone/d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/c;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/threeten/bp/c;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
