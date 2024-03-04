.class final Lorg/threeten/bp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field private a:B

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lorg/threeten/bp/b;->a:B

    .line 4
    iput-object p2, p0, Lorg/threeten/bp/b;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 2
    invoke-static {v0, p0}, Lorg/threeten/bp/b;->b(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    invoke-static {p1}, Lorg/threeten/bp/OffsetDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    invoke-static {p1}, Lorg/threeten/bp/YearMonth;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/YearMonth;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    invoke-static {p1}, Lorg/threeten/bp/Year;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Year;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    invoke-static {p1}, Lorg/threeten/bp/OffsetTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetTime;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_4
    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    invoke-static {p1}, Lorg/threeten/bp/c;->c(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneId;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_6
    invoke-static {p1}, Lorg/threeten/bp/ZonedDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_7
    invoke-static {p1}, Lorg/threeten/bp/LocalTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_8
    invoke-static {p1}, Lorg/threeten/bp/LocalDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_9
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_a
    invoke-static {p1}, Lorg/threeten/bp/Instant;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Instant;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_b
    invoke-static {p1}, Lorg/threeten/bp/Duration;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Duration;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/MonthDay;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/MonthDay;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static c(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 2
    new-instance p0, Ljava/io/InvalidClassException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/OffsetDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 4
    :pswitch_1
    check-cast p1, Lorg/threeten/bp/YearMonth;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/YearMonth;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 5
    :pswitch_2
    check-cast p1, Lorg/threeten/bp/Year;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/Year;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 6
    :pswitch_3
    check-cast p1, Lorg/threeten/bp/OffsetTime;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/OffsetTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 7
    :pswitch_4
    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 8
    :pswitch_5
    check-cast p1, Lorg/threeten/bp/c;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/c;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 9
    :pswitch_6
    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZonedDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 10
    :pswitch_7
    check-cast p1, Lorg/threeten/bp/LocalTime;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 11
    :pswitch_8
    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 12
    :pswitch_9
    check-cast p1, Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 13
    :pswitch_a
    check-cast p1, Lorg/threeten/bp/Instant;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/Instant;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 14
    :pswitch_b
    check-cast p1, Lorg/threeten/bp/Duration;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/Duration;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Lorg/threeten/bp/MonthDay;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/MonthDay;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/b;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/threeten/bp/b;->a:B

    .line 2
    invoke-static {v0, p1}, Lorg/threeten/bp/b;->b(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lorg/threeten/bp/b;->a:B

    iget-object v1, p0, Lorg/threeten/bp/b;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/b;->c(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method
