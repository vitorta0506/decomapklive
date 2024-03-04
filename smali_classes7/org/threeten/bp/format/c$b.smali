.class Lorg/threeten/bp/format/c$b;
.super Lorg/threeten/bp/format/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/threeten/bp/format/c;->j(Lorg/threeten/bp/temporal/g;Ljava/util/Map;)Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/threeten/bp/format/h$b;

.field final synthetic c:Lorg/threeten/bp/format/c;


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/c;Lorg/threeten/bp/format/h$b;)V
    .locals 0

    iput-object p1, p0, Lorg/threeten/bp/format/c$b;->c:Lorg/threeten/bp/format/c;

    iput-object p2, p0, Lorg/threeten/bp/format/c$b;->b:Lorg/threeten/bp/format/h$b;

    invoke-direct {p0}, Lorg/threeten/bp/format/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lorg/threeten/bp/temporal/g;JLorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/threeten/bp/format/c$b;->b:Lorg/threeten/bp/format/h$b;

    invoke-virtual {p1, p2, p3, p4}, Lorg/threeten/bp/format/h$b;->a(JLorg/threeten/bp/format/TextStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lorg/threeten/bp/temporal/g;Lorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/g;",
            "Lorg/threeten/bp/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lorg/threeten/bp/format/c$b;->b:Lorg/threeten/bp/format/h$b;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/h$b;->b(Lorg/threeten/bp/format/TextStyle;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
