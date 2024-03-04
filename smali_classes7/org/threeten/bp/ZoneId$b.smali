.class Lorg/threeten/bp/ZoneId$b;
.super Ljl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/threeten/bp/ZoneId;->getDisplayName(Lorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/threeten/bp/ZoneId;


# direct methods
.method constructor <init>(Lorg/threeten/bp/ZoneId;)V
    .locals 0

    iput-object p1, p0, Lorg/threeten/bp/ZoneId$b;->a:Lorg/threeten/bp/ZoneId;

    invoke-direct {p0}, Ljl/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getLong(Lorg/threeten/bp/temporal/g;)J
    .locals 3

    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/i<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->g()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/threeten/bp/ZoneId$b;->a:Lorg/threeten/bp/ZoneId;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljl/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
