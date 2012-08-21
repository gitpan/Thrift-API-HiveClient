#
# Autogenerated by Thrift Compiler (0.8.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#
require 5.6.0;
use strict;
use warnings;
use Thrift;

package
   Thrift::API::HiveClient::Service::JobTrackerState;
use constant INITIALIZING => 1;
use constant RUNNING => 2;
package
   Thrift::API::HiveClient::Service::HiveClusterStatus;
use base qw(Class::Accessor);
Thrift::API::HiveClient::Service::HiveClusterStatus->mk_accessors( qw( taskTrackers mapTasks reduceTasks maxMapTasks maxReduceTasks state ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{taskTrackers} = undef;
  $self->{mapTasks} = undef;
  $self->{reduceTasks} = undef;
  $self->{maxMapTasks} = undef;
  $self->{maxReduceTasks} = undef;
  $self->{state} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{taskTrackers}) {
      $self->{taskTrackers} = $vals->{taskTrackers};
    }
    if (defined $vals->{mapTasks}) {
      $self->{mapTasks} = $vals->{mapTasks};
    }
    if (defined $vals->{reduceTasks}) {
      $self->{reduceTasks} = $vals->{reduceTasks};
    }
    if (defined $vals->{maxMapTasks}) {
      $self->{maxMapTasks} = $vals->{maxMapTasks};
    }
    if (defined $vals->{maxReduceTasks}) {
      $self->{maxReduceTasks} = $vals->{maxReduceTasks};
    }
    if (defined $vals->{state}) {
      $self->{state} = $vals->{state};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'HiveClusterStatus';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{taskTrackers});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{mapTasks});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{reduceTasks});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{maxMapTasks});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^5$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{maxReduceTasks});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^6$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{state});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('HiveClusterStatus');
  if (defined $self->{taskTrackers}) {
    $xfer += $output->writeFieldBegin('taskTrackers', TType::I32, 1);
    $xfer += $output->writeI32($self->{taskTrackers});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{mapTasks}) {
    $xfer += $output->writeFieldBegin('mapTasks', TType::I32, 2);
    $xfer += $output->writeI32($self->{mapTasks});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{reduceTasks}) {
    $xfer += $output->writeFieldBegin('reduceTasks', TType::I32, 3);
    $xfer += $output->writeI32($self->{reduceTasks});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{maxMapTasks}) {
    $xfer += $output->writeFieldBegin('maxMapTasks', TType::I32, 4);
    $xfer += $output->writeI32($self->{maxMapTasks});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{maxReduceTasks}) {
    $xfer += $output->writeFieldBegin('maxReduceTasks', TType::I32, 5);
    $xfer += $output->writeI32($self->{maxReduceTasks});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{state}) {
    $xfer += $output->writeFieldBegin('state', TType::I32, 6);
    $xfer += $output->writeI32($self->{state});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package
   Thrift::API::HiveClient::Service::HiveServerException;
use base qw(Thrift::TException);
use base qw(Class::Accessor);
Thrift::API::HiveClient::Service::HiveServerException->mk_accessors( qw( message errorCode SQLState ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{message} = undef;
  $self->{errorCode} = undef;
  $self->{SQLState} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{message}) {
      $self->{message} = $vals->{message};
    }
    if (defined $vals->{errorCode}) {
      $self->{errorCode} = $vals->{errorCode};
    }
    if (defined $vals->{SQLState}) {
      $self->{SQLState} = $vals->{SQLState};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'HiveServerException';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{message});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{errorCode});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{SQLState});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('HiveServerException');
  if (defined $self->{message}) {
    $xfer += $output->writeFieldBegin('message', TType::STRING, 1);
    $xfer += $output->writeString($self->{message});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{errorCode}) {
    $xfer += $output->writeFieldBegin('errorCode', TType::I32, 2);
    $xfer += $output->writeI32($self->{errorCode});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{SQLState}) {
    $xfer += $output->writeFieldBegin('SQLState', TType::STRING, 3);
    $xfer += $output->writeString($self->{SQLState});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

1;

__END__
=pod

=head1 NAME

Thrift::API::HiveClient::Service::JobTrackerState

=head1 VERSION

version 0.002

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<Thrift::API::HiveClient|Thrift::API::HiveClient>

=back

=head1 AUTHOR

Stephen R. Scaffidi <sscaffidi@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Stephen R. Scaffidi.

This is free software, licensed under:

  The Apache License, Version 2.0, January 2004

=cut
